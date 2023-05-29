# VSCode Snippets

Code snippets are templates that make it easier to enter repeating code patterns.

## vscode usage
In Visual Studio Code, snippets appear in IntelliSense with `(Ctrl+Space)` mixed with other suggestions

## Add Custom Snippets
To create or edit your own snippets, select Configure User Snippets under File > Preferences (Code > Preferences on macOS), and then select the language (by language identifier) for which the snippets should appear, or the New Global Snippets file option if they should appear for all languages. VS Code manages the creation and refreshing of the underlying snippets file(s) for you.

![snippets scroll-down image](https://code.visualstudio.com/assets/docs/editor/userdefinedsnippets/snippet-dropdown.png)

Snippets files are written in JSON, support C-style comments, and can define an unlimited number of snippets. Snippets support most TextMate syntax for dynamic behavior, intelligently format whitespace based on the insertion context, and allow easy multiline editing.

### Create custom snippets

```json
// [windows] usually in 
// C:\Users\{USER}\AppData\Roaming\Code\User\snippets\*.json
// ${workspace}/.vscode/*.json
{
	"Standard main Template": {
		"prefix": "main_args",
		"body": [
			"",
			"int main (${1:int argc, char* argv[]}) {",
			"  $0",
			"    return 0;",
			"}"
		],
		"description": "A standard main template for a C program"
	}
}
```

#### Variables on snippets
With `$name` or `${name:default}`, you can insert the value of a variable. When a variable isn't set, its default or the empty string is inserted. When a variable is unknown (that is, its name isn't defined) the name of the variable is inserted and it is transformed into a placeholder.

More information on [variables](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_variables).

## Online Resources
* online [snippet generator](https://snippet-generator.app/)

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.
