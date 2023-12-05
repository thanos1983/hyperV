# internal-resources
A shared catalogue of NNIT resources, including code and code documentation. Can also contain material from other technologies, if said material primarily alters, manages or interacts with **insert repo technology**. E.G. A powershell script setting up **repo technology** configurations.


## **Important**

Do not upload anything confidential or secret to this repo. Static passwords, confidential documentation or the like shouldn't be placed within the shared-resources repo. 


The repo is intended for **internal use** accross NNIT.

---

## **How to use internal-resources**

### *Figure out where your code should be stored*

Try to find an appropriate category folder for your code. If the appropriate category folder doesn't exists, you may contact janl@nnit.dk and request a new category folder. This will very likely be necessary when the repository is first created, as the repository will be empty at first. When requesting a new folder, please send a description of what your code does and what kind of technologies it is using.

### *Fork the repository*

At present, the intended way to use the repo is to fork from the repo without using elevated permissions of any kind. You can then work on the fork of the repo as you wish and then create a pull request once you’ve made some chances you’d like to commit. The request will then be approved by me or someone else with the correct permissions. 


### *Make a folder for your code*

Each independent project or code snippet should be put into a well-named folder. The name of the folder should try to communicate the folder's contents as clearly and concisely as possible. Check [naming-conventions.md](naming-conventions.md) for this repo's naming conventions.

You must add a readme.md to your folder with documentation explaining what your code does. You must add a list of contributors in a separate contributors.md file, so that it's easy to reach out to those who have worked on the code.

---

## **Conventions and considerations**

### *Naming conventions*

Check [naming-conventions.md](naming-conventions.md) for this repo's naming conventions.


### *Readme files*

There must be a readme.md file in every project folder which documents the code contained within the folder and/or details the folder's use.
There must be a contributor.md file or a section in the readme.md file which lists contributors to the code. This allows people to ask questions to the ones who made a given code snippet.

[Readme file syntax.](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

### *Issues and discussions*
If bugs or issues are found in the code, said bugs or issues can be given tasks in the Github projects feature. You can also use the discuss feature in order to communicate about various issues, ideas and the like.

### *Github projects*

Consider using the Github projects feature to ensure that only one person is working on one document at a given time. Consider checking the Github projects feature to see if anyone else is currently working on a given file or project. This can help avoid merge conflicts.

---

## **Feedback**

Questions, ideas and feedback for the repo can be send to JANL@nnit.com
