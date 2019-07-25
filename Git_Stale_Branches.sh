#!bash

# To store the git credentials in cache 
git config credential.helper store

# To set the cache for 2 hours
git config --global credential.helper 'cache --timeout 7200'

echo Merged branches 
for branch in `git branch -r --merged | grep -v HEAD`; do
echo -e `git log --no-merges -n 1 --format="%ci, %cr, %an, %ae, "  $branch | head -n 1` \\t$branch; 
done | sort -r 

# To delete 

git push origin --delete SSMClientICE_CR_D_RHEL7_WAS9
