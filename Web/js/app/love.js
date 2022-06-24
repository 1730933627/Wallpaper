new Vue({
    el:"#app",
    data:{
        account:"",
        logged:false,
        imgList:[]
    },
    methods: {
        getList(){
            axios({
                url:`http://${address.ip}:${address.port}/getUserLove`,
                method:"POST",
                data:{
                    account:this.account,
                }
            }).then(res=>{
                for(let v of res.data.data[0].loves.slice(1,-1).split(",")){
                    this.getImages(v);
                }
                console.log(this.imgList)
            });
        },
        getImages(id){
            axios({
                url:`http://${address.ip}:${address.port}/getImage`,
                method:"POST",
                data:{id}
            }).then(res=>{
                this.imgList.push(res.data.data[0].url);
            });
        }
    },
    beforeMount() {
        const cooicks = document.cookie;
        for(let item of cooicks.split(";")){
            let v = item.split("=")
            if(v[0]=="account"){
                this.account = v[1];
            }
        }
        if(this.account!=""){
            this.getList();
        }else{
            this.logged = true;
        }
    },
})