# This is a basic workflow to help you get started with Actions

name: CI

# Controls when the action will run. Triggers the workflow on push or pull request
# events but only for the master branch
on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v2

      # Runs a single command using the runners shell
      - name: Run a one-line script
        run: echo Hello, world!

      # Runs a set of commands using the runners shell
      - name: Run a multi-line script
        run: |
          echo Add other actions to build,
          echo test, and deploy your project.
          
#install and load tidyverse
if(!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)

# Load data set
load("prrace08(1).rda")

# Examine data set
View(prrace08(1).rda)

# Set n to legth of data set
n <- length(prrace08(1).rda)

# Initialize new variables in data frame
Obama <- 1
McCain <- 1

#View(prrace08(1).rda)

# Calculate values for other than first row using FOR loop

for (i in 2:n) {
  SNOHOMISH$incr_cases[i] <- (SNOHOMISH$cases[i]-SNOHOMISH$cases[i-1]) 
}

View(SNOHOMISH)

# Plot what we've got

p <- ggplot(data = prrace08(1).rda,
            mapping = aes(x = date,
                          y = incr_cases))

p + geom_point() +
  labs(x = "Obama Votes", y = "McCain Votes",
       title = "Votes in 2008 election.",
   ")



for (i in 1:n) {
  if ([i]==0) {
    SNOHOMISH$incr_cases[i] <- NA
  } else {}
}

View(SNOHOMISH)

# Replot

p <- ggplot(data = SNOHOMISH,
            mapping = aes(x = date,
                          y = incr_cases))

p + geom_point() +
  labs(x = "Dates", y = "Incremental Cases",
       title = "COVID-19 Cases in Snohomish County, WA",
       subtitle = "Data points are incremental new confirmed cases",
       caption = "Source: NY Times")

