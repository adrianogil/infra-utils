function gcp-set-project() {
    local selection
    local project_id

    selection=$(gcloud projects list --format="value(projectId,name)" | default-fuzzy-finder --prompt="Select GCP project: ")
    if [[ -z "$selection" ]]; then
        echo "No project selected."
        return 1
    fi

    project_id=$(awk '{print $1}' <<<"$selection")
    gcloud config set project "$project_id"
}
