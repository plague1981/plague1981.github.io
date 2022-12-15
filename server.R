library(pagedown)
# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
    source('global.R', local = TRUE)

    #get impact factor
    # ref 1
    IF_jpr_1<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-j-proteome-res.shtml",47,147)
    })
    output$IF_jpr_1 <- renderText({
      return(paste0('(impact factor:',IF_jpr_1(),')'))
    })
    # ref 2
    IF_fc_1<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-frontiers-in-chemistry.shtml",47,147)
    })
    output$IF_fc_1 <- renderText({
      return(paste0('(impact factor:',IF_fc_1(),')'))
      IF_fc_1()
    })
    # ref 3
    IF_cdd_1<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-cell-death-dis.shtml",47,147)
    })
    output$IF_cdd_1 <- renderText({
      return(paste0('(impact factor:',IF_cdd_1(),')'))
    })
    # ref 4
    IF_aging_1<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-aging-us.shtml",47,147)
    })
    output$IF_aging_1 <- renderText({
      return(paste0('(impact factor:',IF_aging_1(),')'))
    })
    # ref 5
    IF_cl_1<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-cancer-lett.shtml",47,147)
    })
    output$IF_cl_1 <- renderText({
      return(paste0('(impact factor:',IF_cl_1(),')'))
    })
    # ref 6
    IF_oncogene<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-ONCOGENE.shtml",47,147)
    })
    output$IF_oncogene_1 <- renderText({
      return(paste0('(impact factor:',IF_oncogene(),')'))
    })
    # ref 7
    IF_bg<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-bmc-genomics.shtml",47,147)
    })
    output$IF_bg_1 <- renderText({
      return(paste0('(impact factor:',IF_bg(),')'))
    })
    # ref 8
    IF_cl_2<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-cancer-lett.shtml",47,147)
    })
    output$IF_cl_2 <- renderText({
      return(paste0('(impact factor:',IF_cl_2(),')'))
    })
    # ref 9
    IF_eu<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-eur-urol.shtml",47,147)
    })
    output$IF_eu_1 <- renderText({
      return(paste0('(impact factor:',IF_eu(),')'))
    })
    # ref 10
    IF_ctdb<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-curr-top-dev-biol.shtml",47,147)
    })
    output$IF_ctdb_1 <- renderText({
      return(paste0('(impact factor:',IF_ctdb(),')'))
    }) 
    # ref 11
    IF_cl_3<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-cancer-lett.shtml",47,147)
    })
    output$IF_cl_3 <- renderText({
      return(paste0('(impact factor:',IF_cl_3(),')'))
    })
    # ref 12
    IF_ot_1<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-oncotarget.shtml",47,144)
    })
    output$IF_ot_1 <- renderText({
      return(paste0('(impact factor:',IF_ot_1(),')'))
    })
    # ref 13
    IF_cl_4<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-cancer-lett.shtml",47,147)
    })
    output$IF_cl_4 <- renderText({
      return(paste0('(impact factor:',IF_cl_4(),')'))
    })
    # ref 14
    IF_cl_5<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-cancer-lett.shtml",47,147)
    })
    output$IF_cl_5 <- renderText({
      return(paste0('(impact factor:',IF_cl_5(),')'))
    })
    # ref 15
    IF_ot_2<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-oncotarget.shtml",47,144)
    })
    output$IF_ot_2 <- renderText({
      return(paste0('(impact factor:',IF_ot_2(),')'))
    })
    # ref 16
    IF_np<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-neoplasia.shtml",47,147)
    })
    output$IF_np_1 <- renderText({
      return(paste0('(impact factor:',IF_np(),')'))
    })
    # ref 17
    IF_an<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-ann-neurol.shtml",47,147)
    })
    output$IF_an_1 <- renderText({
      return(paste0('(impact factor:',IF_an(),')'))
    })
    # ref 18
    IF_pr<-eventReactive(input$showIF,{
      getIF("https://www.scijournal.org/impact-factor-of-pediatr-res.shtml",47,147)
    })
    output$IF_pr_1 <- renderText({
      return(paste0('(impact factor:',IF_pr(),')'))
    })
    # showIF button
    output$showIF <- renderUI({
      actionButton(
        inputId = "showIF"
        ,class='btn'
        ,label = 'show'
        , icon = icon("bars")
      )
     })
    output$downloadData<-downloadHandler(
      filename = function(){
        return(paste('ChangYi\'s Resume',Sys.Date()))
      },
      content= function(file){
        url<-'https://plague1981.github.io/Joey.html'
        webpage<-chrome_print(url, output = file, browser = find_chrome(), verbose = FALSE)
        return(webpage)
      }
    )
})