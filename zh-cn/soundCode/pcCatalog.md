<!--
 * @Author: ZZH
 * @Date: 2021-07-30 09:41:07
 * @LastEditTime: 2021-07-30 11:15:45
 * @LastEditors: ZZH
 * @Description: 
 * @FilePath: /vuepress-starter/docs/soundCode/pcCatalog.md
-->
# pc端目录结构（设计器+引擎）

## 项目目录结构


> 目录结构如下：

```

├─k-form-design
│  └─docs	// 项目文档目录
│  └─examples	// 项目文件夹（路由、界面、组件等）
│  └─lib	// 新建k-form-design目录
│  └─node_modules	// node依赖文件夹
│  └─packages	// 设计器和界面引擎的包
│  │	├─core
│  │	  ├─components_use.js // use所需要的组件并导出
│  │	  ├─revoke.js // 设计器的撤销重做功能
│  │	├─KBatch	// 动态表格的组件
│  │	└─KCheckbox	// 多选框组件
│  │	└─KCheckbox	// 日期选择器
│  │	└─kEditor	// 富文本组件
│  │	└─KFormBuild	// 界面引擎模块
│  │	  ├─index.vue // 引擎的主入口（a-form包裹buildBlocks组件）
│  │	  ├─index.js // 导出组件文件
│  │	  ├─buildBlocks.vue // 这是一个递归组件主要作用：渲染布局组件，以及递归布局组件下的子组件
│  │	└─KFormDesign	// 界面设计器模块
│  │	  ├─config // 配置文件
│  │	    ├─formItemsConfig.js // 各组件的初始JSON
│  │	    ├─jsonFormat.js // 默认导入的JSON数据
│  │	  ├─module // 模块文件夹
│  │	    ├─codeModal.vue // 代码预览组件
│  │	    ├─collapseItem.vue // 设计器的左侧组件折叠面板
│  │	    ├─footer.vue // 页脚
│  │	    ├─formComponentPanel.vue // 设计器中间的设计面板部分
│  │	    ├─formItemProperties.vue // 右侧控件属性面板部分
│  │	    ├─formNode.vue // 设计器中间部分的单个节点生成（引用KFormItem）
│  │	    ├─formProperties.vue // 右侧表单属性面板部分
│  │	    ├─header.vue // 头部
│  │	    ├─importJsonModal.vue // 导入JSON弹窗
│  │	    ├─jsonModal.vue // 预览JSON弹窗
│  │	    ├─layoutItem.vue // 设计器中间部分使用递归组件调用自己，生成布局结构及表单
│  │	    ├─operatingArea.vue // 操作按钮部分
│  │	  ├─index.vue // 界面设计器的主入口
│  │	  ├─index.js // 导出组件文件
│  │	└─KFormItem	// 组件库
│  │	  ├─index.vue // 入口，包含各种基础组件
│  │	  ├─index.js // 导出组件文件
│  │	  ├─customComponent.vue // 自定义组件
│  │	└─KFormPreview	// 界面预览组件
│  │	  ├─index.vue // 入口，两端的预览组件
│  │	  ├─index.js // 导出组件文件
│  │	└─KSelectInputList	// 多选表单
│  │	  ├─module // 模块
│  │	    ├─KFormModelItem.vue // 对应的表单
│  │	  ├─selectInputList.vue // 入口
│  │	  ├─index.js // 导出组件文件
│  │	└─KTimePicker	// 时间选择器
│  │	  ├─timePicker.vue // 入口
│  │	  ├─index.js // 导出组件文件
│  │	└─PreviewCode	// 时间选择器
│  │	  ├─index.vue // 入口
│  │	└─UploadFile	// 文件上传
│  │	  ├─index.vue // 入口
│  │	  ├─index.js // 导出组件文件
│  │	└─UploadImg	// 界面预览组件
│  │	  ├─index.vue // 入口
│  │	  ├─index.js // 导出组件文件
│  └─index.js	// 包入口
│  └─mini.js	// 组件输出文件,不打包antd ui组件

```
