# Copula-CoVaR-GNN-HAR 学位论文 LaTeX bundle

方法与实证设计初稿 v0.2，2026-10-15。保留原六章结构与研究模型。PDF 共 46 页。

本版完成原始数据位置索引及五份字典的文档核对，已取得本轮登记对象的实际 schema 及有界真实小样，包括公司行动严格版本视图的有界读取。小样取得成功不等于验收通过：已识别收益来源口径差异与历史时点可见性证据不足，分钟会话规则仍在核验，真实覆盖尚未确认。正式协议未锁定，正式市场实验未启动，第五、六章保持待填。论文不声称已确认样本范围、预测改善或统计显著性。

核心比较为 M01_FULL 对 B06_MATCHED；底层参数对照包含 t 与 t−5 的归档信息及相同有效性标志。新增图 3.1 为纯方法示意，使用指定的粉紫与珊瑚配色。

## 内容

- `paper/main.tex`：入口，含封面、摘要及章节引用。
- `paper/main.pdf`：已编译的论文。
- `paper/chapters/`、`paper/references.bib`：六章、附录与参考文献。
- `paper/thesispalette.sty`、`paper/figures/`：LaTeX 色板、方法图、跨绘图库样式与说明。
- `scripts/build_paper.sh`：本地构建脚本。
- `MANIFEST.sha256`：发布文件的 SHA-256 清单。

## 编译

需要已安装的 XeLaTeX、Biber、ctex、gb7714-2015、TikZ 与 Fandol 字体。在 bundle 根目录执行：

```bash
bash scripts/build_paper.sh
```

Overleaf 设置主文档为 `paper/main.tex`，编译器为 XeLaTeX；参考文献使用 Biber。本包不分发字体文件。

## 样式与验收

八色 HEX 为 `#B6B3D6 #CFCCE3 #D5D3DE #D5D1D1 #F6DFD6 #F8B2A2 #F1837A #E9687A`，以参考图印刷 HEX 为准。M01_FULL 用玫瑰色、实线、圆点；B06_MATCHED 用淡紫色、虚线、方点。图形用标签、线型和标记辅助区分，不能只靠颜色。

本版已通过 XeLaTeX → Biber → XeLaTeX × 2 编译，编译日志无未定义引用或溢出版框警告；对全部页面作渲染总览，并放大核验新增图和文档证据说明。Matplotlib 样式已在实际服务器绘图环境中使用 Matplotlib 3.10.1 成功解析。

此 bundle 仅包含可公开的论文文件和构建素材，不包含内部数据位置索引、字典原件、数据库配置、连接凭据、原始行情或派生市场数据。版式尚未按学校最终模板认证，参考文献保持既有稿件内容，未在本次配色维护中重新做文献核验。
