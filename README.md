# Vim Heredoc

Extended handling for heredocs in vim.

* Enables syntax highlighting inside heredocs

## Usage

When naming the delimiter for a heredoc use the following:

```bash
cat << SHELL
echo example
SHELL
```

This will then be correctly highlighted with `sh.vim`

### Additional options

Additional options can be configured by setting `g:heredoc_matches` e.g.

```vim
let g:heredoc_matches = [['SHELL', 'sh'], ['PYTHON', 'python']]
```

## To Do

* Work out how to make indentation work properly inside
* Some sort of background color change or other indicator that the lines are
  within a heredoc
