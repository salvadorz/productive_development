# Code Formatting

Code formatting helps to increase the quality of the code. And it's related to Coding (_Style_) standards.

1) **Readability**
Well-formatted code is easier to read and understand for developers, facilitating collaboration and code maintenance over time.

 2) **Maintainability**: Consistently formatted code makes it easier to detect errors and make modifications. By following formatting guidelines, a clear and consistent structure is promoted, making it easier to identify and correct issues.

3) **Industry standards**: Many organizations and development communities have established formatting standards. Following these conventions helps make code more readable for other developers and facilitates collaboration on shared projects.

4) **Automation and tools**: Consistent formatting rules allow for the use of automated linting and formatting tools that can help identify errors and improve code quality efficiently.

## Tool `clang-format`
One of this tools is [`clang-format`](https://clang.llvm.org/docs/ClangFormat.html) which comes from *LLVM/Clang* open source project

### Install `clang-format`
* **Linux** Using the packaging tool
```bash
sudo apt install clang-format
```
* **Python** Using the `pip`
```bash
pip install clang-tools
clang-tools --install 13 # you can specify the version, 13 in this case
```

### Using `clang-format`
`clang-format [options] [@<file>] [<file> ...]`

## Generate your config (style)
clang-format already has some predefined coding style sets:
* [`llvm`](http://llvm.org/docs/CodingStandards.html)
* [`Google`](https://google.github.io/styleguide/cppguide.html)
* [`Chromium`](https://chromium.googlesource.com/chromium/src/+/master/styleguide/c++/c++.md)
* [`Mozilla`](https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Coding_Style)
* [`Webkit`](https://webkit.org/code-style-guidelines/)
* [`Microsoft`](https://docs.microsoft.com/en-us/visualstudio/ide/editorconfig-code-style-settings-reference?view=vs-2019)
* [`GNU`](https://www.gnu.org/prep/standards/standards.html)

Using those as base you can create your own by using
```bash
clang-format --style=llvm -dump-config > .clang-format
```

### vscode

You can install this extension. And put the .clang-format file at same parent directory of the workspace.

| Name        | Ctrl+p        |
| ----------- |:-------------:|
| *clangd*    | `ext install llvm-vs-code-extensions.vscode-clangd` |


### `git-clang-format`
Using code formatting in a project with legacy code may yield unfavorable results, and it might be more beneficial to explore alternative tools. git-clang-format will format only the code that is touched (refactored). Basically only the changes intended to be commit-ed will receive the formatting.

## Online Resources
* _online_ [clang-format builder](https://zed0.co.uk/clang-format-configurator/)
* [Base Styles Coding comparator](https://github.com/motine/cppstylelineup)
