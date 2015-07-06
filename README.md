# vim configuration for windows  

## Prerequisite  

- ```git```   was already installed
- ```curl``` was installed with ```git``` and added to %PATH%    

## Installation  
- open git console(git bash)
- download config files from github
    - ```git clone https://github.com/AndyChen1985/VimConfiguration.git```

- copy files to Home directory
    - ```cd VimConfiguration```
    - ```cp -r ./*vim* ~```

- download vundle plugin
    - ```git clone https://github.com/gmarik/Vundle.vim.git ~/vimfiles/bundle/Vundle.vim```

- open vim and
    - ```:PluginInstall``` 
