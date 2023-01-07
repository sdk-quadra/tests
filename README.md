## tests
test詰め合わせ

### bookmark

以下のようなコードをchrome bookmarkのurlに貼り、そのbookmarkをclickするとjsが効く

```
javascript:var select1 = document.getElementsByName("cb");
select1[0].options[3].selected = true;

var select2 = document.getElementsByName("ct");
select2[0].options[11].selected = true;

var select3 = document.getElementsByName("mb");
select3[0].options[5].selected = true;

var shiborikomiForm = document.getElementById("js-shiborikomiForm");
var head2 = shiborikomiForm.getElementsByTagName("label");
for(let j = 0; j <= 50; j++){
	if(head2[j].htmlFor == "ts2" || head2[j].htmlFor == "cn5" || head2[j].htmlFor == "tc5") {
		head2[j].click();
		}
	};

var areaSelectPanel = document.getElementById("js-areaSelectPanel");
var head = areaSelectPanel.getElementsByTagName("label");
for(let i = 0; i <= 100; i++){
	head[i].click();
};
```