blog_original
===================

Jekyll powered blog

Update - Push out your changes to master
Publish - Run deploy.sh

To fork
=======
1) create a new project on GitHub called ‘blog_new'’.
2) git clone git@github.com:asolidum/blog_original.git blog_new
3) Edit your Git config file and replace the origin URL with your new URL:
   emacs.git/config

   [remote "origin"]
           fetch = +refs/heads/*:refs/remotes/origin/*
           url = git@github.com:asolidum/blog_new.git #replace original with new
4) git remote add upstream git@github.com:asolidum/blog_original.git
5) git push -u origin master

To pull from original: git fetch upstream
To merge from original: git merge upstream/master
