# Set the name of the output text file
output_file="server_output_lan.txt"

# Set the number of times to run the program
num_runs=5

# Set the list of parameters to loop through
parameters=("16384 4096 29" "16384 4096 29")

ot=("0" "1")

for round in "${ot[@]}"; do

    for param in "${parameters[@]}"; do

        echo "-----Run $param $round:------" >> "$output_file"

        for ((i=1; i<=$num_runs; i++)); do
            # Run the compiled program and append the output to the text file
            echo "Run $i:" >> "$output_file"
            ./PSU 2 0 $param "$round" >> "$output_file"
            echo "----------------" >> "$output_file"
            echo "Run $i completed."
        done

        echo "$param $round executed $num_runs times, and output appended to $output_file"

    done

done