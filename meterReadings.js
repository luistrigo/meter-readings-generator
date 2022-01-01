const MeterReadings = {
  data() {
    return {
      title: "METER READINGS GENERATOR",
      totalCustomersDB: 0,
      totalMeterReadingsDB: 0,
      totalCities: 7,
      customers:100,
      totalPopulation:0,
      ratio:0,
      cities:[],
      years: 4,
      meterReadingType: 0,
      messageAction:"",
      errorMessages:[],
      creatingCustomeres:false,
      messages:[""],
      totaltime: 0,
      totalMeterReadings: 0,
      flag_stop : false,
      flag_start: false,
      show_delete: false
    };
  },
  computed: {
    meterReadingsCreate: function() {
        let totalRecords = this.totalCustomersDB * this.years * 365;
        if(this.meterReadingType == 1)
            totalRecords = this.totalCustomersDB * this.years * 12;

        return totalRecords;
    }
  },

  methods: {
    resetFields () {
        Object.assign(this.$data, this.$options.data.call(this));
    },
    showDelete(){this.show_delete = true},
    hideDelete(){this.show_delete = false},
    numberLocale(number){
        return number.toLocaleString('en-US');
    },

    async getData() {
      const response = await fetch("getData.php");
      if (response.status === 200) {
        const data = await response.json();
        if(typeof data.message !=='undefined' && data.message !='' ){
          this.messageAction = "Error connection"
          this.errorMessages.push(data.message)
        }
        this.totalCustomersDB =
          typeof data.totalCustomers !== "undefined"
            ? parseInt(data.totalCustomers)
            : 0;
        this.totalMeterReadingsDB =
          typeof data.totalMeterReadings!== "undefined"
            ? parseInt(data.totalMeterReadings)
            : 0;
        // handle data
      }
    },

    async deleteData() {
        this.messageAction = "Deleting customers";
        const response = await fetch("deleteData.php");
        if (response.status === 200) {
            const data = await response.json();
            this.resetFields();
            this.getData();
            this.messageAction = "";
        }
    },
    
    async createCustomers() {
        this.messageAction = "Creating customers";
        this.creatingCustomeres = true;
        const response = await fetch(`createCustomers.php?cities=${this.totalCities}&customers=${this.customers}`,{
            headers: {
            'Content-Type': 'application/json'
            }
        });
        
        if (response.status === 200) {
            const data = await response.json();
            this.totalPopulation = data.totalPopulation;
            this.ratio =  data.ratio; 
            this.cities = data.cities;
            this.getData();
            this.messageAction = "";
            this.creatingCustomeres = false;
        }
      },
    async createMeterReadings(){
        this.messageAction = "Creating Meter Readings";
        if (this.flag_stop)
            return;
        const nCustomers=10;
        const iniTime = performance.now();
        const response = await fetch(`createMeterReadings.php?years=${this.years}&meterReadingType=${this.meterReadingType}&nCustomers=${nCustomers}`,{
            headers: {
            'Content-Type': 'application/json'
            }
        });
        
        if (response.status === 200) {
            const data = await response.json();
            const endTime = performance.now();
            if(data.message=="END"){
                this.getData();
                this.messageAction = "";
            }
            else{
                const timelap = endTime - iniTime;
                this.messages.splice(2,1); //only two last items
                this.messages.unshift(data.message +" in " + timelap + ' ms.');
                this.totaltime +=  timelap;
                this.totalMeterReadings += data.meterReadings;
                this.createMeterReadings();
            }
        }
    },
    startMeterReadings(){
        this.messages = []
        this.createMeterReadings();
        this.flag_start = true;
    },
    stopMeterReadings(){
        this.flag_stop = true;
    },
    continueMeterReadings(){
        this.flag_stop = false;
        this.createMeterReadings();
    },
  },
  mounted() {
    this.getData();
  },
};

Vue.createApp(MeterReadings).mount("#app");
