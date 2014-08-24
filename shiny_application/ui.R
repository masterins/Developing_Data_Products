library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Project Developing Data Products of Data Science"),
  sidebarPanel(
    h1('Main Menu'),
hr(),
textInput("name", "Enter you name please:", "your name"),
    hr(),
    h5('Move this sliderinput and reduce or add observation in the histogram'),
    sliderInput("Observation", "Number of observations:", min=1,max=1300,value=500),
    hr(),
    h5('Select the dataset the result is in tab Summary'),
    selectInput("sel_dataset", "Choose a dataset:",choice = c("pressure", "cars", "rock"))
),
  
  mainPanel(
    tabsetPanel(
      tabPanel('General',verbatimTextOutput("finalname")), 
          tabPanel('Histogram',plotOutput("datas")),    
          tabPanel("Summary",textOutput("introduction"),verbatimTextOutput("res_summary"),tableOutput("view")),
      tabPanel('Help or documentation', 
               p(strong("in this space you find all information about this little shiny program")),
               hr(),
               p("The first thing to do is enter your name, and will be deployed in the first tap called General"),
               br(),
               p("In the second tap called histogram is a graphical sample interaction and the slider bar, you must move the sliderinput, in order to change the number of observations in the chart."),
               br(),
               p("Finally you must select the data you want to see, for it is necessary to select the combox of the 3 options and the results appear in the Summary tap"),
               br(),
               br(),
               hr()
               ),    
    p(strong("Mario Jiménez García 24-08-2014")))
  )
))

