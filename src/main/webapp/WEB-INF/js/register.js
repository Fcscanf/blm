// //文件上传
// let fileInput = document.querySelector('.shopForm .fileupload input');
// let fileDrag = document.querySelector('.shopForm .fileupload .pic-show');
// let fileImgShow = document.querySelector('.shopForm .fileupload .img-show');
// let fileSubmit = document.querySelector('.shopForm .fileupload .file-submit');
//
//
// // 文件数组
// let arr = [],
// // 文件大小
//     aSize = [],
// // 文件名称
//     aTitle = [];
//
// //文件上传
// // 接收拖拽文件
// fileDrag.ondragenter = function () {
//     this.innerText = '请释放鼠标';
// }
// fileDrag.ondragover = function (e) {
//     e.preventDefault();
//     e.stopPropagation();
// }
// fileDrag.ondragleave = function () {
//     this.innerText = '请将图片拖拽到此区域';
// }
// fileDrag.ondrop = function (e) {
//     e.preventDefault();
//     e.stopPropagation();
//     for( let i=0,len=e.dataTransfer.files.length;i<len;i++){
//         let files = e.dataTransfer.files.item(i);
//         if(/image/.test(files.type)){
//             arr.push(files);
//             aSize.push(files.size);
//             aTitle.push(files.name);
//             readerFile(files);
//         }
//     }
// }
//
// fileInput.onchange = function(){
//     if( this.value ){
//         if( this.files.length ){
//             for( let i=0,len=this.files.length;i<len;i++ ){
//                 let files = this.files.item(i);
//                 arr.push(files);
//                 aSize.push(files.size);
//                 aTitle.push(files.name);
//
//                 readerFile(files);
//             }
//         }
//         this.value = '';
//     }
// }
//
// // 图片预览
// function readerFile(files) {
//     // 不推荐用文件读取对象 FileReader 读取 data base64二进制数据 的字符串
//     let blob = new Blob([files]);
//     let url = window.URL.createObjectURL(blob);
//     let div = document.createElement('div');
//     div.innerHTML = '<img src="'+url+'" width="100%" height="100%" /><p></p>';
//     fileImgShow.appendChild(div);
//     count();
// }
//
// // 计算 图片个数 大小名称
// function count() {
//     let aDiv = fileImgShow.querySelectorAll('div');
//
//     // 图片的个数
//     //$('#picLen').innerText = arr.length;
//     // 图片的总大小
//
//     // if(!aSize[0]){
//     //     $('#picSize').innerText = 0;
//     // }else{
//     //     $('#picSize').innerText = (eval(aSize.join('+'))/1024/1024).toFixed(2);
//     // }
//     let aP = fileImgShow.querySelectorAll('p');
//     aP.forEach((item,index)=>{
//         item.innerHTML = aTitle[index] + '<i></i>';
//     })
//     del();
// }
//
// // 删除 文件数组 li
// function del() {
//     let aDiv = fileImgShow.querySelectorAll('div');
//     aDiv.forEach((item,index)=>{
//         item.children[1].children[0].addEventListener('click',function (e) {
//             arr.splice(index,1);
//             aSize.splice(index,1);
//             fileImgShow.removeChild(aDiv[index]);
//             count();
//         })
//     })
// }
//
// fileSubmit.onclick = function(){
//     if(arr.length >= 2){
//         dialog('图片只能上传一张！');
//     }else{
//         $.ajax({
//             type: "Post",
//             url: "Home/GetStr", //请求地址
//             //方法传参的写法一定要对，str为形参的名字,str2为第二个形参的名字
//             data: "{'str':'我是','str2':'XXX'}",
//             success: function(data) {
//
//             },
//             error: function(err) {
//                 alert(err);
//             }
//         });
//     }
// }