# hhuthesis

[![GitHub downloads](https://img.shields.io/github/downloads/ehehela/hhuthesis/total)](https://github.com/ehehela/hhuthesis/releases)
[![GitHub commits](https://img.shields.io/github/commits-since/ehehela/hhuthesis/latest)](https://github.com/ehehela/hhuthesis/commits/master)
[![GitHub release](https://img.shields.io/github/v/release/ehehela/hhuthesis)](https://github.com/ehehela/hhuthesis/releases/latest)

河海大学学位论文 LaTeX 模板。

## 项目说明

本仓库基于[上游 hhuthesis 项目](https://github.com/caowenhan/hhuthesis)维护。

本仓库的主要修改针对博士研究生学位论文的排版格式，相关修改只在 `doctor` 场景下验证通过。

当前版本为 `v3.4.0`。

## 快速开始

模板使用 XeLaTeX 编译，论文源文件应采用 UTF-8 编码，参考文献使用 biber 处理。

下载并解压 Release 中的模板压缩包。
压缩包已经包含可直接使用的 `hhuthesis.cls`、`hhuthesis-example.tex`、`chapters/`、`reference/` 和 `figures/` 等文件，无需另外复制示例文件或先生成文类文件。

直接在 `hhuthesis-example.tex` 中修改论文信息，并根据需要编辑 `chapters/`、`reference/` 和 `figures/` 中的内容。

### 如何编译 PDF

请先确保系统已安装支持 XeLaTeX、biber 和 latexmk 的 TeX 环境。

在解压后的模板目录中打开终端，执行以下命令：

~~~text
latexmk hhuthesis-example.tex
~~~

`latexmk` 会根据随模板提供的 `latexmkrc` 自动调用 XeLaTeX 和 biber，并完成交叉引用所需的多轮编译。
编译完成后，生成的 PDF 文件为 `hhuthesis-example.pdf`。

如需清理编译生成的辅助文件，可执行：

~~~text
latexmk -c
~~~

完整的使用说明请参阅[用户手册](hhuthesis.pdf)，示例文档请参阅 `hhuthesis-example.tex` 及 `chapters/`、`reference/` 和 `figures/` 目录。

## 文件说明

- `hhuthesis.dtx`：模板源文件及使用说明文档的源代码；
- `hhuthesis.ins`：使用 DocStrip 生成文类文件的驱动文件；
- `hhuthesis.cls`：供论文调用的文类文件；
- `hhuthesis.pdf`：模板使用手册；
- `hhuthesis-example.tex`：博士学位论文示例文档；
- `chapters/`、`reference/`、`figures/`：示例文档的章节、参考文献和图片；
- `hhuthesis-build.cmd`、`hhuthesis-build.sh`：源码仓库中用于重新生成文类、使用手册和示例 PDF 的构建脚本；
- `hhuthesis-run.cmd`、`hhuthesis-run.sh`：源码仓库中的示例文档运行脚本；
- `license.txt`：许可证文本。

如需修改模板本身，应优先编辑 `hhuthesis.dtx`，再在源码仓库中运行 `hhuthesis-build.cmd` 或 `hhuthesis-build.sh` 生成 `hhuthesis.cls`，以保持源文件与发布文件一致。

## 参考规范

模板的格式调整主要参考以下文件：

- 《河海大学博士（硕士）学位论文编写格式规定》（2020 年 9 月 29 日发布）；
- 《学位论文编写规则》（GB/T 7713.1-2006）；
- 《信息与文献 参考文献著录规则》（GB/T 7714-2015）；
- 《科技文献的章节编号方法》（CY/T 35-2001）。

## 使用须知

本模板不是河海大学相关部门发布或授权的官方模板。

本版本主要面向博士研究生学位论文，尚未验证其它论文模式的格式效果。

学校的论文格式要求可能发生变化，使用前请结合最新要求和用户手册检查生成结果。

因使用本模板产生的格式审查、提交或其他问题，由使用者自行确认和承担。

## 贡献与许可

欢迎通过[Issue](https://github.com/ehehela/hhuthesis/issues)或 [Pull Request](https://github.com/ehehela/hhuthesis/pulls)反馈问题和改进建议。

本模板遵循 [LaTeX Project Public License](https://www.latex-project.org/lppl.txt)，版本 1.3c 或更高版本。
许可证全文见 [`license.txt`](license.txt)。
