# With defined seed 'getSimulatedTwoArmMeans' returns reproducible results

    Code
      getSimulatedTwoArmMeans(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7, sd1 = 3, sd2 = 4,
        seed = 123)
    Output
      $args
         n1    n2 mean1 mean2   sd1   sd2 
       "50"  "50"   "5"   "7"   "3"   "4" 
      
      $n_total
      [1] 100
      
      $create_time
      [1] "August 01, 2024"
      
      $data
      # A tibble: 100 x 2
         group values
         <dbl>  <dbl>
       1     1   3.32
       2     1   4.31
       3     1   9.68
       4     1   5.21
       5     1   5.39
       6     1  10.1 
       7     1   6.38
       8     1   1.20
       9     1   2.94
      10     1   3.66
      # i 90 more rows
      

# With undefined seed 'getSimulatedTwoArmMeans' returns valid results

    Code
      getSimulatedTwoArmMeans(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7, sd1 = 3, sd2 = 4)
    Output
      $args
         n1    n2 mean1 mean2   sd1   sd2 
       "50"  "50"   "5"   "7"   "3"   "4" 
      
      $n_total
      [1] 100
      
      $create_time
      [1] "August 01, 2024"
      
      $data
      # A tibble: 100 x 2
         group values
         <dbl>  <dbl>
       1     1   3.12
       2     1   5.55
       3     1   2.49
       4     1   9.79
       5     1   5.99
       6     1   2.54
       7     1   6.46
       8     1   7.21
       9     1   6.73
      10     1   4.08
      # i 90 more rows
      

