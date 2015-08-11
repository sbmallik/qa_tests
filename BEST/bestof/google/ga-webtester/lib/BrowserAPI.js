/**!
 * @file Google Analytics Web Tester Browser Module.
 * @author Philippe Sawicki <http://github.com/philsawicki>
 * @copyright Philippe Sawicki 2015
 * @license MIT
 */


/**
 * Google Analytics Web Tester Browser Module.
 */
(function (exports) {

    'use strict';

    /**
     * Install the Data Interceptor function, to be executed in the browser.
     *
     * @param  {Object} config The configuration settings.
     * @return {void}
     * @public
     */
    exports.installDataInterceptor = function (config) {
        /*
        // @TODO: Read from config arguments:
        var disableAllLinks = true;
        if (disableAllLinks) {
            //var links = document.getElementsByTagName('a');
            //for (var i = 0, nbLinks = links.length; i < nbLinks; i++) {
            //    //links[i].onClick = function (e) {
            //    //    e.preventDefault();
            //    //    return false;
            //    //};
            //    links[i].href = 'javascript:return false;';
            //}

            document.addEventListener("click", handler, true);
            function handler (e) {
                //e.stopPropagation();
                e.preventDefault();
                //return false;
            }
        }
        */

        // Forward "ga()" calls to the actual Google Analytics method?
        window.submitToGA = false;
        if (config && config.submitToGA) {
            window.submitToGA = config.submitToGA;
        }


        // Setup the data Interceptor API:
        window.GAWebTester = {
            SubmitToGA: window.submitToGA, // Forward "ga()" calls to the actual Google Analytics method?
            EventBuffer: [],               // List of Arguments passed to "ga()".
            LastEvent: {},                 // List Arguments passed to "ga()".
            OriginalGA: undefined,         // Reference to the original "ga()" method.
            ClickHandlerCalled: false,     // Flag to check if the global "click" handler has been called.

            /**
             * "ga()" replacement.
             * @return {void}
             */
            gaCallback: function () {
                window.GAWebTester.EventBuffer.push(arguments);
                window.GAWebTester.LastEvent = arguments;

                // Call the original "ga()" function with the supplied arguments:
                if (window.GAWebTester.SubmitToGA && window.GAWebTester.OriginalGA) {
                    window.GAWebTester.OriginalGA.apply(null, arguments);
                }
            },

            /**
             * Return the "EventBuffer" accumulator Arguments sent to "ga()".
             * @return {Array<Object>} The "EventBuffer" accumulator.
             */
            getEventBuffer: function () {
                return window.GAWebTester.EventBuffer;
            },

            /**
             * Return the "LastEvent" Arguments sent to "ga()".
             * @return {Object} The "LastEvent" Arguments sent to "ga()".
             */
            getLastEvent: function () {
                return window.GAWebTester.LastEvent;
            },

            /**
             * Return a composite object of the "EventBuffer", "LastEvent" and "GTMTrackerName".
             * @return {Object} A composite object of the "EventBuffer", "LastEvent" and "GTMTrackerName".
             */
            getData: function () {
                var data = {
                    EventBuffer: window.GAWebTester.getEventBuffer(),
                    LastEvent: window.GAWebTester.getLastEvent(),
                    GTMTrackerName: window.GAWebTester.getGTMTrackerName()
                };
                return data;
            },

            /**
             * Return the GTM Tracker Name, or "null" if none available.
             * @return {string|null} The GTM Tracker Name, or "null" if none available.
             */
            getGTMTrackerName: function () {
                if (window.GAWebTester.EventBuffer.length > 0) {
                    var createEvent = window.GAWebTester.EventBuffer[0];
                    if (typeof createEvent !== 'undefined' && createEvent[0] === 'create') {
                        var trackerName = createEvent[2].name;
                        return trackerName;
                    }
                }
                return null;
            },

            /**
             * Disable the "click" Handlers on the "document", which might cause the browser to navigate away.
             * @return {void}
             */
            disableClickHandlers: function () {
                document.addEventListener('click', window.GAWebTester.globalClickHandler, true);
            },

            /**
             * Callback for "click" events, to prevent the browser from navigating away.
             * @param  {Event} event The "click" event triggered on the "document".
             * @return {void}
             */
            globalClickHandler: function (event) {
                // Flag that the global "click" handler has been called:
                window.GAWebTester.ClickHandlerCalled = true;

                event.preventDefault();
            }
        };


        // Disable all "click" callbacks on the "document":
        if (config && config.disableClicks) {
            //document.addEventListener('click', window.GAWebTester.globalClickHandler, true);
            window.GAWebTester.disableClickHandlers();
        }

        // Install the data Interceptor:
        if (typeof window.ga !== 'undefined') {
            window.GAWebTester.OriginalGA = window.ga;
        }
        window.ga = window.GAWebTester.gaCallback;
    };


    /**
     * Uninstall the Data Interceptor function, to be executed in the browser.
     *
     * @return {void}
     * @public
     */
    exports.uninstallDataInterceptor = function () {
        // Uninstall the data Interceptor:
        if (window.GAWebTester) {
            // Clear/Restore the "ga()" Interceptor:
            if (window.GAWebTester.OriginalGA) {
                window.ga = window.GAWebTester.OriginalGA;
            }
            window.GAWebTester = undefined;
        }
    };


    /**
     * Disable the "click" handlers installed on the "document".
     *
     * @return {void}
     * @public
     */
    exports.disableClickHandlers = function () {
        if (window.GAWebTester) {
            window.GAWebTester.disableClickHandlers();
        }
    };
})(
    /**
     * Exports the Google Analytics Web Tester Browser API.
     */
    (typeof module !== 'undefined' && typeof module.exports !== 'undefined')
        ? module.exports
        : this.GoogleAnalyticsWebTesterBrowserAPI = {}
);
