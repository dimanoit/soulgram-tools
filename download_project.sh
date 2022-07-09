#!/bin/sh
echo 'Downloading a project'

git clone https://github.com/dimanoit/soulgram.posts.git &
git clone https://github.com/dimanoit/soulgram-ui.git &
git clone https://github.com/dimanoit/soulgram-interests.git &
git clone https://github.com/dimanoit/soulgram-gateway.git &
git clone https://github.com/dimanoit/soulgram-account-manage.git &
git clone https://github.com/dimanoit/soulgram-integration-event-logger.git &
git clone https://github.com/dimanoit/soulgram.eventbus.git &
git clone https://github.com/dimanoit/soulgram.eventbus.rabbitMq.git &
git clone https://github.com/dimanoit/soulgram-file-manager.git &
git clone https://github.com/dimanoit/soulgram-logging.git &
git clone https://github.com/dimanoit/soulgram-identity.git 

echo 'Now you can close the bash'
