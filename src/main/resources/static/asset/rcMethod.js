
// 초기화 메소드 
const RC_Initialize = async (CLIENT_API, SESSION_TOKEN, COOKIE_TOKEN, USER_ID) => {

    // api_key 값 호출 함수
    const GET_API_KEY = () => {
        const API = CLIENT_API + "/auth/new";
        const KEY = "39206366-bd63-43eb-9f81-0e80d1c4e9d2";


        let xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (xhr.readyState == XMLHttpRequest.DONE) {
                // key 값 로컬스로지 저장
                localStorage.setItem("api_key", xhr.responseText.replace(/"/g, ""));
            }
        }
        xhr.open('GET', API, true);
        xhr.setRequestHeader("secret-key", KEY);
        xhr.send(null);

        xhr.onload = () => {
            // status 는 HTTP 통신의 결과를 의미하며, 201 은 통신이 성공했다는 의미
            if (xhr.status == 201) {
                let result = xhr.response;
                console.log("Initialize SUCCESS")
                console.log(result)
                
            } else {
                console.log("CLICK ERROR LOADING FILE!" + this.status);
            }
        };

    }

    GET_API_KEY();

    // 로컬 스토리지 저장
    localStorage.setItem("api", CLIENT_API + "/log")
    localStorage.setItem("session_token", SESSION_TOKEN)
    localStorage.setItem("cookie_token", COOKIE_TOKEN)
    localStorage.setItem("user_id", USER_ID)

}



// RC 메소드
const RC_Method = async (paramsObject) => {
    // time
    let today = new Date();
    let year = today.getFullYear();
    let month = ('0' + (today.getMonth() + 1)).slice(-2);
    let day = ('0' + today.getDate()).slice(-2);
    let hours = ('0' + today.getHours()).slice(-2);
    let minutes = ('0' + today.getMinutes()).slice(-2);
    let seconds = ('0' + today.getSeconds()).slice(-2);


    // ----- value로 들어갈 함수들 ----- //
    let eventTime = year + '-' + month + '-' + day + ' ' + hours + ':' + minutes + ':' + seconds;


    // 초기값 세팅
    let CLIENT_API = localStorage.getItem("api");
    let API_KEY = localStorage.getItem("api_key");
    let SESSION_TOKEN = localStorage.getItem("session_token") || "";
    let COOKIE_TOKEN = localStorage.getItem("cookie_token") || "";
    let USER_ID = localStorage.getItem("user_id") || "visitor";

    // 로그 POST
    const POST_LOG = () => {
        let xhr = new XMLHttpRequest();
        xhr.open('POST', CLIENT_API);
        xhr.setRequestHeader('content-type', 'application/json');
        xhr.setRequestHeader("api-key", API_KEY);

        // 고객사 커스텀 로직
        xhr.send(JSON.stringify([{
            event_time: eventTime,
            session_token: SESSION_TOKEN,
            cookie_token: COOKIE_TOKEN,
            user_id: USER_ID,
            params: {...paramsObject }
        }]));



        xhr.onload = () => {
            // status 는 HTTP 통신의 결과를 의미하며, 201 은 통신이 성공했다는 의미
            if (xhr.status == 201) {
                let result = xhr.response;
                console.log("ClICK SUCCESS")
                console.log(result)
                
            } else {
                console.log("CLICK ERROR LOADING FILE!" + this.status);
            }
        };
    }

    POST_LOG()
}


// RC 추천 visible 메소드
const RC_TargetMethod = (target, paramsObject) => {
    // 스크롤 이벤트 구하기
    const $targetEl = document.getElementById(target);
    let isAction = false;

    window.addEventListener('scroll', () => {

        const targetHeight = Math.ceil($targetEl.getBoundingClientRect().top);

        if (targetHeight < window.innerHeight && targetHeight) {
            if (isAction === false) {
                // 메소드 호출
                RC_Method(paramsObject);
            }
            isAction = true;
        }
    });
}