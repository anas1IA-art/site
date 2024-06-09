
if [ -z "$1" ]; then
  echo "Error: No commit message provided."
  echo "Usage: ./push_to_github.sh \"Commit message\""
  exit 1
fi

commit_message=$1

git status

git add .

git status

git commit -m "$commit_message"

git push origin main

mkdocs serve
