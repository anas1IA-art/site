
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Error: Commit message and branch name are required."
  echo "Usage: ./push_to_github.sh \"Commit message\" branch_name"
  exit 1
fi

commit_message=$1

branch_name=$2

git status

git add .

git status

git commit -m "$commit_message"

git push origin "$branch_name"

mkdocs serve
