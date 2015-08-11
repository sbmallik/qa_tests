  config.before :each, js: true do
    page.driver.allow_url("miyagi.azcentral.com")
    page.driver.allow_url("maxcdn.bootstrapcdn.com")
    page.driver.allow_url("fonts.googleapis.com")
    page.driver.allow_url("cdn.datatables.net")
    page.driver.allow_url("cdn.leafletjs.com")
    page.driver.allow_url("ajax.googleapis.com")
    page.driver.allow_url("code.jquery.com")
    page.driver.allow_url("netdna.bootstrapcdn.com")
  end