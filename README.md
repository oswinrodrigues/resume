# About

LaTeX code for my résumé. Adapted from [billryan/resume](https://github.com/billryan/resume).

# Demo

In the [LaTeX.Online](https://latexonline.cc/) compiler:

1. Input the TeX file [URL](https://github.com/oswinrodrigues/resume/blob/master/resume.tex)
2. Select latest `texlive` from drop-down list
3. Select `xelatex` tool from drop-down list

Click the button to generate and view the resulting PDF.

# License

The résumé _format_ is under the [MIT](http://opensource.org/licenses/MIT) license, while its _content_ is restricted for my use alone. Any copyrighted fonts or icons are subject to the license granted by their respective owners.

# Workflow

(Assumes [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) VS Code extension is setup. If not, follow its installation guide.)

## Setup

1. Fork this repository [on GitHub](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#forking-a-repository)
2. Open the fork [in a container volume on VS Code](https://code.visualstudio.com/docs/devcontainers/containers#_quick-start-open-a-git-repository-or-github-pr-in-an-isolated-container-volume)
3. Wait for the container to be created (this is only necessary the first time)

## Development

### Simple

If you want to keep the résumé format as-is, but use your own details:

1. Replace content in each `sections/*.tex` file with your own
2. PDF is generated and viewed in VS Code, with the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension

Note: _LaTeX Workshop_ is provided by the container. You don't have to install it yourself.

### Complex

If you want to also modify the résumé format:

1. Reorder or omit sections in `resume.tex` (see the `\input` lines)
2. Modify global (résumé-wide) formatting in `resume.cls`
3. Modify local (section-specific) formatting in the respective `sections/*.tex` file
