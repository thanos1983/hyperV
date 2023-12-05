# Naming conventions <!--- This md should be changed into a mkdocs document instead, to be linked to from the main readme. This will ensure it's up to date with the latest naming conventions --->

This markdown document aims to both give general pointers to possible naming conventions for files and folders in your projects and outline the naming conventions for your project folders in this repo in order to make it easier for others to traverse your projects.

We strongly recommend that all projects adopt some kind of naming convention. As a minimum, the project's folder name must follow the following naming convention.

## Standard abbreviations

Different languages and technologies have standard abbreviations that can help you name your files and folders in a manner which will be consistent with others' abbreviations.

In general, be careful with your usage of abbreviations. It can make it harder to search for your code, unless the abbreviation is widely known and used. If your file name isn't too big, consider using full terms instead of abbreviations. Consider using longer abbreviations when possible. (So, instead of DOS, one could write DevOps, which is still an abbreviation of Developer Operations)

A few standard abbreviation lists:

- [Microsoft's list of Azure abbreviations](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations)
- [Geekflare's list of AWS abbreviations](https://geekflare.com/aws-related-acronyms/)

If your project uses abbreviations that aren't standard, consider listing them in either in a readme.md file or in a naming-conventions.md file or some other file with a clear and concise name.

## Project folder naming conventions
These naming conventions are mandatory for the main folder which contains your project.

1. Use all lowercaps. e.g: gxp.
2. Connect words with hyphens. e.g: lighthouse-tenant-script. Connect abbreviations with hyphens unless the concatenated version is common usage. e.g: aws-dos-vm-setup.
3. (Optional) If the project predominantly uses one given language or technology, put that in the title of the folder. e.g: powershell-pipeline-vm-setup. This shouldn't be done if the technology is given by one of the folders or the repository name on the path to the project folder.
4. Try to briefly label what the project does if possible. e.g: vm-setup-and-configuration.
5. In case your project's ideal name is already in use, consider adding your initials or some distinguishing element to your name. e.g: janl-vm-setup, csv-input-vm-setup, powershell-csv-vm-setup.

If you're in doubt, feel free to consult janl for ideas for your folder's name.