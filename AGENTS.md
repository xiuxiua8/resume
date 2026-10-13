# AGENTS.md

本仓库是王子隆的公开中文简历（LaTeX，基于 chi-cv-template），仓库是 public 的。

## 工作流程

1. 修改 `resume-cn.tex`；只有确实需要调整版式时才改 `cv.cls`
2. 运行 `make`：编译 `resume-cn.pdf`、检查是否为 1 页、重新生成 `preview/resume-cn.png`
3. 用图片查看器检查 `preview/resume-cn.png`：不能超出 1 页，尽量避免一条 bullet 只多出几个字就折行
4. 把 `resume-cn.tex`、`resume-cn.pdf`、`preview/resume-cn.png` 一起提交

## 隐私规则（必须遵守）

- 这里只放公开版简历。不要加入照片、性别、出生年月、民族、政治面貌、考研分数等个人信息
- `img/photo.jpg` 已被 `.gitignore` 忽略，不要强制添加
- 本地有一个 `kaoyan-resume` 分支，是考研复试用的版本，包含上述个人信息和照片。它只能留在本地：不要 push、不要 merge 或 cherry-pick 到 `main`，也不要从中复制个人信息
- 简历里写的项目经历要与对应 GitHub 仓库的实际内容一致，不要夸大

## 常用命令（定义在 `cv.cls`）

- `\cventry{标题}{右上角：日期或链接}[副标题][右下角：地点、奖项或链接]`
- `\iconlink[\faGithub][文字]{url}`：带图标的链接
- `basicinfo` 环境 + `\info{...}`：页眉联系方式，`\email`、`\phone`、`\wechat`、`\github`、`\linkedinsquare`
- `compactlist` 环境：技能等无圆点列表
