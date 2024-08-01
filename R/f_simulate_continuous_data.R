
#'
#' @title
#' Get Simluated Two Arm Means
#'
#' @description
#' Simluates and returns a normally distributed continuous dataset for two groups.
#'
#' @param n1 a single integer value. The sample size of group 1.
#' TODO document all arguments
#' @param ... ensures that all arguments (starting from the "...") are to be named.
#'
#' @details
#' TODO describe
#' 
#' @return a list with all arguments and results; the ouput is defined as a class with name 'SimulationResult'.
#'
#' @examples
#' getSimulatedTwoArmMeans(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7, sd1 = 3, sd2 = 4, seed = 123)
#'
#' @export
#'
getSimulatedTwoArmMeans <- function(
        n1, 
        n2, 
        mean1, 
        mean2, 
        sd1, 
        sd2,
        alternative = c("two.sided", "less", "greater"),
        ...,
        seed = NA_integer_) {
    
    # TODO use assertions to check all input arguments
    checkmate::assertInt(n1, lower = 1) 
    checkmate::assertInt(n2, lower = 1) 
  
    if (is.na(seed)) {
        # TODO create a new seed if it is NA, i.e., it is undefined
      seed = 1
    }

    # specify seed
    if (!is.na(seed)) {
        set.seed(seed)
    }

    # TODO create normal distributed random data for the two groups

    # TODO save the fake data to a data frame in long format

    # TODO put all arguments and results to a list
    result <- list(n1 = n1, n2 = n2, 
                   mean1 = mean1, mean2 = mean2, sd1 = sd1, sd2 = sd2)
    result$data <- data.frame(
      group = c(rep(1, n1), rep(2, n2)),
      values = c(
        rnorm(n = n1, mean = mean1, sd = sd1),
        rnorm(n = n2, mean = mean2, sd = sd2)
      )
    )
    
    result$n_total = result$n1 + result$n2
    result$allocation_ratio = result$n1 / result$n2
    result$creation_time = Sys.time()
    result$t.test = t.test(result$data$values[result$data$group == 1], 
                           result$data$values[result$data$group == 2])
    # set the class attribute
    result <- structure(result, class = "SimulationResult")
    return(result)
}

#'
#' @title
#' Print Simulation Result
#'
#' @description
#' Generic function to print a \code{SimulationResult} object.
#'
#' @param x a \code{SimulationResult} object to print.
#' @param ... further arguments passed to or from other methods.
#' 
#' @examples
#' x <- getSimulatedTwoArmMeans(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7, sd1 = 3, sd2 = 4, seed = 123)
#' print(x)
#'
#' @export
#'
print.SimulationResult <- function(x, ...) {
  args <- list(n1 = x$n1, n2 = x$n2, 
               mean1 = x$mean1, mean2 = x$mean2, 
               sd1 = x$sd1, sd2 = x$sd2
               )
  
  print(list(
    args = format(args), 
    n_total = x$n_total,
    create_time = format(Sys.time(), '%B %d, %Y'),
    data = dplyr::tibble(x$data)
  ), ...)
}

#'
#' @title
#' Show Simulation Result
#'
#' @description
#' Generic function to show a \code{SimulationResult} object.
#'
#' @param x a \code{SimulationResult} object to show.
#' @param ... further arguments passed to or from other methods.
#'
#' @examples
#' getSimulatedTwoArmMeans(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7, sd1 = 3, sd2 = 4, seed = 123)
#' 
#' @export
#'
showDefault.SimulationResult <- function(x, ...) {
		# TODO optionally change the default output function
    print(x = x, ...)
}

#'
#' @title
#' Plot Simulation Result
#'
#' @description
#' Generic function to plot a \code{SimulationResult} object.
#'
#' @param x a \code{SimulationResult} object to plot.
#' @param main an overall title for the plot.
#' @param xlab a title for the x axis.
#' @param ylab a title for the y axis.
#' @param ... ensures that all arguments (starting from the "...") are to be named.
#'
#' @details
#' Uses ggplot2 to create the plot.
#'
#' @return
#' A ggplot2 object.
#'
#' @examples
#' x <- getSimulatedTwoArmMeans(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7, sd1 = 3, sd2 = 4, seed = 123)
#' if (require(ggplot2)) plot(x)
#'
#' @importFrom rlang .data
#' 
#' @export
#'
plot.SimulationResult <- function(
        x, 
        ..., 
        main = "Continuous Fake Data", 
        xlab = "Group", 
        ylab = "Simulated Values") {
        
    # TODO implement the plot function
}
