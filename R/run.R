run_app <- function(
  onStart = NULL,
  options = list(),
  enableBookmarking = NULL,
  uiPattern = "/",
  ...
) {
  with_golem_options(
    app = shinyApp(
      ui = shinyAppUIzopzop2,
      server = shinyAppServer,
      onStart = onStart,
      options = options,
      enableBookmarking = enableBookmarking,
      uiPattern = uiPattern
    ),
    # Initiate the translator as a golem.option
    #golem_opts = list(translator = shiny.i18n::Translator$new(translation_csvs_path = "inst/app/www/translations/"))
    golem_opts = list(translator = i18n)
  )
}
