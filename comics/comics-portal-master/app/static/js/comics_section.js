
$(function() {
    var comicsList = new Array();
    $("#comic-select").children().each(function() {
         if ($(this).html() != "Select"){
            comicsList.push({label: $(this).text(), id: $(this).val()});
        }
    });
    $("#comics-search").autocomplete({
        source: comicsList,
        messages: {
            noResults: '',
            results: function() {}
        },
        select: function(event, ui) {
            $('#comics-search-value').attr('name', 'comic-search').val(ui.item.id);
            $('#kings-feature-id').attr('name', 'feature_id').val(ui.item.id);
        }
    });
    $("#comics-form").on('submit', function() {
        var data = $("#comics-form :input").serializeArray();
        if ((data[0]['value'] == 0) && (data[1]['value'] == '')){
            event.preventDefault();
            return false;
        }
    })
});
