new Vue({
    el:"#app",
    data:{
        account:"",
        password:"",
        logged:false,
        info:{}
    },
    methods: {
        submit(){
            axios({
                url:`http://${address.ip}:${address.port}/getUser`,
                method:"POST",
                data:{
                    account:this.account,
                    password:this.password
                }
            }).then(res=>{
                if(res.data.status===200){
                    this.info = res.data.data[0];
                    this.logged = true;
                    document.cookie = `account=${this.account};path=127.0.0.1;`;
                    document.cookie = `account=${this.account};path=/Web;`;
                    document.cookie = `password=${this.password};path=127.0.0.1;`;
                }else if(res.data.status===201){
                    console.log("密码错误");
                }else if(res.data.status===202){
                    console.log("没有该用户");
                }
            });
        },
        signOut(){
            document.cookie = "account=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=127.0.0.1;";
            document.cookie = "account=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/Web;";
            document.cookie = "password=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=127.0.0.1;";
            location.reload();
        }
    },
    beforeMount() {
        const cooicks = document.cookie;
        for(let item of cooicks.split(";")){
            let v = item.split("=")
            if(v[0]=="account"){
                this.account = v[1];
            }else if(v[0]==" password"){
                this.password = v[1];
            }
        }
        if(this.account!=""&&this.password!=""){
            this.submit();
        }
    },
})