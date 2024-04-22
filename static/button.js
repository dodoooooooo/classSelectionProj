function auth() {
    var code = document.getElementById("code").value;
    var day = document.getElementById("time").value;
    var instructorname = document.getElementById("instructorname").value;
    var coursename = document.getElementById("coursename").value;

    if(!(code != " " && code > 999)) {
        alert("請輸入正確格式");
        return;
    }

    if(instructorname != " " && instructorname.charCodeAt() > 255) {}
    else {
        alert("請輸入中文!!!");
        return;
    }

    if(day != " " && (day > 0 && day < 6) && Number.isInteger(parseInt(day)) == true) {}
    else if(parseInt(day) <= 0 || parseInt(day) >= 6) {
        alert("請輸入一到五!!!");
    }

    if(coursename != " " && coursename.charCodeAt() > 255) {}
    else {
        alert("請輸入中文!!!");
        return;
    }
}

function toggleInput(checkboxId, inputId) {
    var checkbox = document.getElementById(checkboxId);
    var input = document.getElementById(inputId);

    if (checkbox.checked) {
        input.disabled = false; // 启用输入框
    } else {
        input.disabled = true; // 禁用输入框
        input.value = '';
    }
}

