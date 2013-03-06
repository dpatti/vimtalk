# Vim Configuration

## Setting up
* Windows:
  * Place the `.vimrc` file in your home directory (`C:\Users\<you>\.vimrc`)
  * In the above directory, place the `.vim` directory and rename it to `vimfiles`
    (no more `.`)
* OSX/Unix
  * Place the `.vimrc` file and `.vim` directory in your home directory
    (`/home/<user>/`)

## Adding color
* 10 popular color schemes: <http://www.vimninjas.com/2012/08/26/10-vim-color-schemes-you-need-to-own/>
  (included in the provided `.vim` directory with a few others)
* 428 color schemes side-by-side:
  <https://code.google.com/p/vimcolorschemetest/#Browse_By_File_Type>
* Download the `<colorscheme>.vim` file and drop it in `.vim/colors`.
* In your `.vimrc` file, search for `colorscheme` and change `default` to the
  name of the file you picked, without the extension.

## Plugins

### Installing and managing plugins
* [Pathogen](https://github.com/tpope/vim-pathogen): Manage plugins by adding
  them to the `.vim/bundle` directory to keep them neatly organized and load
  them with a single line in your `.vimrc` file. This was included if you wanted
  to try out any plugins.
* [Vundle](https://github.com/gmarik/vundle): Instead of managing the
  `.vim/bundle` directory on your own, specify the plugins you want in your
  `.vimrc` file and let them be installed for you.

### Most recommended plugins
* [NERD Tree](https://github.com/scrooloose/nerdtree): File explorer in its own
  buffer.
* [ctrlp](https://github.com/kien/ctrlp.vim): Quickly find a file within your
  current project directory.
* [syntastic](https://github.com/scrooloose/syntastic): Checks syntax as you
  save the file.
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe): Out-of-the-box and
  surprisingly fast code completion.
