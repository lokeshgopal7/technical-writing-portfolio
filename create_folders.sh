#!/bin/bash

# Create the main folder structure
mkdir -p docs/api docs/user-guides docs/knowledge-base open-source blog

# Create files in the respective folders
touch docs/api/sample-api-guide.md docs/api/swagger-example.yaml
touch docs/user-guides/installation-guide.md docs/user-guides/troubleshooting.md
touch docs/knowledge-base/common-errors.md docs/knowledge-base/best-practices.md
touch open-source/project1-contribution.md open-source/project2-contribution.md
touch blog/tech-writing-best-practices.md blog/AI-in-documentation.md

# Create the README.md file
touch README.md

echo "✅ Folder structure and files created successfully!"

#!/bin/bash

# Define the folder structure
declare -A folders=(
    ["docs/api"]="sample-api-guide.md swagger-example.yaml"
    ["docs/user-guides"]="installation-guide.md troubleshooting.md"
    ["docs/knowledge-base"]="common-errors.md best-practices.md"
    ["open-source"]="project1-contribution.md project2-contribution.md"
    ["blog"]="tech-writing-best-practices.md AI-in-documentation.md"
)

# Create folders and files
for folder in "${!folders[@]}"; do
    mkdir -p "$folder"
    for file in ${folders[$folder]}; do
        touch "$folder/$file"
    done
done

# Create README.md
touch README.md

echo "✅ Folder structure and files created successfully!"


