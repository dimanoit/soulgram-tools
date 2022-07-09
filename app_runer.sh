#!/bin/sh
wsl -d docker-desktop
sysctl -w vm.max_map_count=262144

echo 'Upping mongo db...'
docker start 63d54ba17fa9a6f7c1a4fe6c8d13df32984974a99618455ba50abe5aa8e69177
echo "Mongo db upped"

echo 'Upping elastic search db...'
docker start 8745154b1c0ee72126df143cb78ba20a9fe92b86a6b57fd29c34ba55ec0b80f1
echo 'Elastic search upped'

echo 'Upping rabbit mq'
docker start a8693eef5ebf655f09bb39efc845c9e27d4a74b32e315689cfe0b219b28e3666
echo 'Rabbit mq upped'

echo 'Upping ms sql'
docker start cf3ec9ed9c8f6c2926b5c202c7cb67abcc3722dd428569b84c7d4e9c3ffb3af9
echo 'Ms sql upp    ed'

echo 'Upping sea'
docker start dc37633979d657daa8f9b5100e3fc5c2a5bf34bca027208e16b112756b78d7f9
echo 'Sea upped'

gateway_path='/Users/Dima/Programming/Soulgram/Apis/soulgram-gateway/Soulgram.Gateway'
identity_path='/Users/Dima/Programming/Soulgram/Apis/soulgram-identity/Soulgram.Identity'
account_manage_path='/Users/Dima/Programming/Soulgram/Apis/soulgram-account-manage/Soulgram.AccountManage.Api'
interests_path='/Users/Dima/Programming/Soulgram/Apis/soulgram-interests/Soulgram.Interests/Soulgram.Interests.Api'
posts_path='/Users/Dima/Programming/Soulgram/Apis/soulgram.posts/Soulgram.Posts.Api'

sleep 5

dotnet run --project=$gateway_path &
dotnet run --project=$identity_path &
dotnet run --project=$account_manage_path &
dotnet run --project=$interests_path &
dotnet run --project=$posts_path &
npm run start