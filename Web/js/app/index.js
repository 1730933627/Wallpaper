new Vue({
    el:"#wallpaper",
    data:{
        oldData:[],
        newData:[],
        sort:"推荐",
        category:"不限",
        size:"不限",
        page:0,
        pageSize:16,
        pageEnd:0,
        account:"",
        popUp:false,
        mount:false
    },
    methods: {
        getFreeList(arr){
            let arrAdd = [...arr];
            for (let i = 1; i < arrAdd.length; i++) {
                const random = Math.floor(Math.random() * (i + 1));
                [arrAdd[i], arrAdd[random]] = [arrAdd[random], arrAdd[i]];
            }
            return arrAdd;
        },
        xinClick(element){
            if(this.account==""){
                if(this.popUp==false){this.popUp = true;}
                setTimeout(()=>{
                    this.popUp = false;
                },1000);
                return;
            }
            axios({
                url:`http://${address.ip}:${address.port}/setUserLove`,
                method:"POST",
                data:{
                    account:this.account,
                    love:element.path[1].id
                }
            }).then(res=>{
                element.path[0].style.backgroundImage = "url(./images/logo/xin.png)";
            });
        },
        nextPage() {
            if(this.page<this.pageCount-1){
                this.page++;
            }
        },
        prevPage(){
            if(this.page>0){
                this.page--;
            }
        },
        pageGoto(e){
            this.page = e.target.innerHTML-1;
        },
    },
    watch:{
        sort(e){
            if(e=="推荐"){
                this.newData = this.getFreeList(this.oldData);
            }else if(e=="最热"){
                this.newData = this.oldData.sort((a, b)=>{
                    return b.hot - a.hot;
                });
            }else if(e=="最新"){
                this.newData = this.oldData.sort((a, b)=>{
                    return b.id - a.id;
                });
            }else if(e=="最老"){
                this.newData = this.oldData.sort((a, b)=>{
                    return a.id - b.id;
                });
            }
        },
        category(e){
            if(e=="不限"){
                this.newData = this.getFreeList(this.oldData);
            }else{
                this.newData = this.oldData.filter((p)=>{   
                    return p.type.indexOf(this.category) !== -1
                })
            }
        },
        size(e){
            if(e=="不限"){
                this.newData = this.getFreeList(this.oldData);
            }else{
                this.newData = this.oldData.filter((p)=>{
                    let px = p.pixel.split("x");
                    let x = Number(px[0]),y = Number(px[1]);
                    if(e=="1080P"){
                        if(x>=1920&&x<2560&&y>=1080&&y<1440){
                            return p;
                        }
                    }
                    if(e=="2K"){
                        if(x>=2560&&x<3840&&y>=1440&&y<2160){
                            return p;
                        }
                    }
                    if(e=="4K"){
                        if(x>=3840&&x<7680&&y>=2160&&y<4320){
                            return p;
                        }
                    }
                    if(e=="8K"){
                        if(x>=7680&&x<15360&&y>=4320&&y<8640){
                            return p;
                        }
                    }
                })
            }
        }
    },
    computed:{
        pageCount() {
            let l = this.newData.length,
                s = this.pageSize;
                this.pageEnd = Math.floor(l / s)+1;
            return this.pageEnd;
        },
        paginatedData() {
            const start = this.page * this.pageSize
                   ,end = start + this.pageSize;
            return this.newData.slice(start, end);
        }
    },
    beforeMount() {
        axios({
            url:`http://${address.ip}:${address.port}/getWallpaper`,
            method:"POST",
        }).then(response=>{
            this.oldData = response.data.data;
            this.newData = this.getFreeList(this.oldData);
        });
        const cooicks = document.cookie;
        for(let item of cooicks.split(";")){
            let v = item.split("=")
            if(v[0]=="account"){
                this.account = v[1];
            }
        }
    },
    mounted() {
        this.mount = true;
    }
})