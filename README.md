## layout
![vim](./vim.png)

## support keys (you can diy keys in ~/.vim/vim/key.vim)

|key|info|说明|
|---|---|---|
|,|leader key|前缀键|
|,ll|open nerd tree on left|打开文件浏览器|
|,rr|open tag bar on right|打开符号浏览器|
|//|comment/uncomment code|注释/反注释|
|,ff|auto format code|自动格式化|
|,sm|search most recent used file|查找最近使用过的文件|
|,sf|search file|查找文件|
|,gd|jump to the definition(c/c++/go)|跳转到定义(c/c++/go)|
|,fs|cscope find symbols(c/c++/go)|查找符号(c/c++/go)|
|,ft|cscope find strings(c/c++/go)|查找字符串(c/c++/go)|
|\<shift-right\>|cscope jump to next result|跳转到下一结果|
|\<shift-left\>|cscope jump to previous result|跳转到前一结果|
|<|open/close cscope result list|打开/关闭查找结果列表|
|\<shift-down\>|jump to next error|跳转到下一错误|
|\<shift-up\>|jump to previous error|跳转到前一错误|
|>|open/close error list|打开/关闭错误列表|
|,zi|fold/unfold all code bolcks|整体折叠|
|,za(or blank)|fold/unfold current block|局部折叠|
|\<tab\>|switch to next buffer|切换下一缓存|
|\<shift-tab\>|switch to previous buffer|切换前一缓存|
|,tt|add/update your code title|添加/更新文件说明|
|...|...|...|


## support languages and features (支持语言与特性）【 1★=2☆】

|language(语言)|highlight(高亮)|autocomplete(补全)|syntax(查错)|snips(补全块)|jump(跳转)|todo(待改进)|
|---|---|---|---|---|---|---|
|c|★★☆|★★☆|★★|★★☆|★★|☆|
|cpp|★★☆|★★☆|★★☆|★★☆|★★|☆|
|golang|★★☆|★★☆|★★|★★☆|★☆|☆|
|javascript|★|★★|☆|★★☆|☆|★★|
|html|★|★|☆|★★☆|☆|★★|
|...|...|...|...|...|...|...|

## plugins and resources path

this is a simple and powerful configuration of vim, you can diy your own vim base on it.
you can share some good plugins with me.

|path|DIY info|DIY说明|
|---|---|---|
|~/.vimrc|entrance configuration|插件入口
|~/.vim/base.vim|base configuration|基础配置
|~/.vim/plugin.vim|plugins configuration|插件们的配置
|~/.vim/func.vim|function configuration|自定函数
|~/.vim/key.vim|key configuration|快捷键配置
|~/.vim/plugged/|plugin installed dir|插件默认安装目录
|~/.vim/colors/|colorscheme installed dir|色彩主题安装目录
|~/.vim/snips/|snips collected dir|snip补全收集
|~/.vim/ycm/|.ycm\_extra\_conf.py dir|ycm配置目录
|~/.vim/dicts/|dictionary dir|字典目录

## install(中途vim-go安装工具时需使用翻墙网络)

	git clone https://github.com/adwpc/wow-vim.git
	cd vim
	
	#install vimrc
	./install vimrc
	

    #Q&A, see wiki first

