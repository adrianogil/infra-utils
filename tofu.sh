alias tf=tofu

function tf-init() {
    # Capture start time
    start_time=$(date +%s)

    # Initialize tofu
    tofu init

    # Capture end time
    end_time=$(date +%s)

    # Calculate and display the elapsed time
    elapsed_time=$((end_time - start_time))
    echo "Time elapsed: $elapsed_time seconds"
}

function tf-destroy() {
    # Capture start time
    start_time=$(date +%s)

    # Destroy tofu
    tofu destroy

    # Capture end time
    end_time=$(date +%s)

    # Calculate and display the elapsed time
    elapsed_time=$((end_time - start_time))
    echo "Time elapsed: $elapsed_time seconds"
}