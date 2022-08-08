# Check Paclet for the [Wolfram Language Paclet Repository](https://resources.wolframcloud.com/PacletRepository/)

The Check Paclet action is an interface to the 
[`CheckPaclet`](https://resources.wolframcloud.com/PacletRepository/resources/Wolfram/PacletCICD/ref/CheckPaclet.html) 
function from 
[Wolfram/PacletCICD](https://resources.wolframcloud.com/PacletRepository/resources/Wolfram/PacletCICD/) 
and can be used to check your Wolfram Language paclet for potential issues within GitHub Actions. 
This is roughly equivalent to using the **Check > All** menu item from the resource definition notebook within 
Wolfram Desktop or Mathematica.

## Usage

A YAML file that uses this action can be automatically generated for your paclet using 
[`WorkflowExport`](https://resources.wolframcloud.com/PacletRepository/resources/Wolfram/PacletCICD/ref/WorkflowExport.html):

```Mathematica
PacletSymbol["Wolfram/PacletCICD", "WorkflowExport"]["path/to/paclet", "Check"]
```

Alternatively, using GitHub actions YAML syntax directly:
```yaml
name: Check Paclet
on: [push]
jobs: 
  Check: 
    name: Check Paclet
    runs-on: ubuntu-latest
    container: 
      image: wolframresearch/wolframengine:latest
      options: --user root
    env: 
      WOLFRAMSCRIPT_ENTITLEMENTID: ${{ secrets.WOLFRAMSCRIPT_ENTITLEMENTID }}
    steps: 
    - name: Checkout repository
      uses: actions/checkout@v2
    - name: Check paclet
      uses: WolframResearch/check-paclet@v1
```

## Parameters

Input                     | Default                     | Description
------------------------- | --------------------------- | ---------------
`target`                  | `"Submit"`                  | The named configuration to use for error checking. Some possible values are `"Build"`, `"Check"`, `"Deploy"`, and `"Submit"`.
`definition_notebook`     | `"./ResourceDefinition.nb"` | The relative path to the paclet's resource definition notebook
`paclet_cicd_version`     | `"latest"`                  | The version of [PacletCICD](https://resources.wolframcloud.com/PacletRepository/resources/Wolfram/PacletCICD/) to use

## Notes
For this action to work, your repository needs to have a license entitlement ID defined as a repository secret. See [this tutorial](https://resources.wolframcloud.com/PacletRepository/resources/Wolfram/PacletCICD/tutorial/GitHubActionsQuickStart.html) for details.


## See Also

- [Action for building your paclet](https://github.com/WolframResearch/build-paclet)
- [Action for submitting your paclet to the Wolfram Language Paclet Repository](https://github.com/WolframResearch/submit-paclet)
- [Action for running your paclet test files](https://github.com/WolframResearch/test-paclet)
- [Continuous Integration and Deployment for Wolfram Language Paclets](https://resources.wolframcloud.com/PacletRepository/resources/Wolfram/PacletCICD/)