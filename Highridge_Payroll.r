payment_slip <- list()\n
        # create the workers data and store it in a list of lists
for(i in 1:400){
        worker_id <- i
        worker_name <- paste(\"worker_\", worker_id)
        gender <- sample(c("Male", "Female"), 1) # Sample one gender
        salary <- runif(1, 5000, 30000) # Sample one salary
        # create a list containing worker's data\n",
        worker_data <- list(
        "name" = worker_name,
        "gender" = gender,
        "salary" = salary,
         )
        # append the worker's data to the payment_slip list\n",
        payment_slip[[i]] <- worker_data
        }
# conditional statement                             
for (worker in payment_slip) {,
        employment_level <- tryCatch({,
        if (worker$salary > 10000 && worker$salary < 20000) {
                "A"
        } else if (worker$salary > 7500 && worker$salary < 30000 && worker$gender == "Female") {
                "A5-F"
        } else {
                stop("NA")  # trigger an exception\n",
        }
         }, error = function(e) {
                paste(e$message)
            })
        
        cat(strrep("=", 40), "\n")
        cat("Highridge Construction Company\n")
        cat(strrep("-", 40), "\n")
        cat("employee_name:", worker$name, "\n")
        cat("gender:", worker$gender, "\n")
        cat("salary: $", worker$salary, "\n")
        cat("employment_level:", employment_level, "\n")
        cat("\n")
}

}
