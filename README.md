# SlackNotifier
Bridget between Github and Slack to nofity by message github activity

## Installation
`bundle install`

##Set up
Create a *.env* file
fill theses constants
- GITHUB_REPO_NAME="REPOSITORY"
- GITHUB_ACCESS_TOKEN="YOUR GITHUB TOKEN"
- SLACK_CLIENT_ID="SLACK ORGANISATION"
- SLACK_CLIENT_TOKEN="YOUR TOKEN"

##Run it 

    bundle exec rackup -p $PORT
Or

    foreman start
