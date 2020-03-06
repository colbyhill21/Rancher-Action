# Rancher-Action
Github Action for using the Rancher CLI to manage resources with Rancher during an action.

## Usage

### Example Workflow file

A simple workflow file for simply listing the pods in a context is given below:

```yaml
jobs:
  rancher_job:
    runs-on: ubuntu-latest
    steps:
      - name: Rancher Action
        uses: colbyhill21/Rancher-Action@v1.0
        with: 
          args: '"get pods"'
          token: ${{ secrets.RANCHER_TOKEN }}
          context: ${{ secrets.RANCHER_CONTEXT }}
          url: ${{ secrets.RANCHER_URL }}
```
