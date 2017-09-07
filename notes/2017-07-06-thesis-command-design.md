# Shell script to open, compile and save the thesis
- `thesis build` selectively compiles a document based on arguments.
	- Defaults to pdf and the whole contents of the 'thesis' folder. Arguments can select chapters and pdf/docx format
	- Compiles headers of each reference into a single .bib file, runs pandoc
- `thesis save` just commits any changes made to the repo to git
