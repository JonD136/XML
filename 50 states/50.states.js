// filename: 50.states.js 
// name: "california", is for extra credit. All 50

var states = [ {name: "California", code:"CA",population:37253956},
               {name: "Texas", code:"TX",population:25145561},
               {name: "New York", code:"NY", population:19378102},

               {name: "Florida", code:"FL",population:18801310},
               {name: "Illinois", code:"IL",population:12830632},
               {name: "Pennsylvania", code:"PA", population:12702379},

               {name: "Ohio", code:"OH",population:11536504},
               {name: "Michigan", code:"MI",population:9883640},
               {name: "Georgia", code:"GA", population:9687653},

               {name: "North Carolina", code:"NC",population:9535483},
               {name: "New Jersey", code:"NJ",population:8791894},
               {name: "Virginia", code:"VA", population:8001024},

               {name: "Washington", code:"WA",population:6724540},
               {name: "Massachusetts", code:"MA",population:6547629},
               {name: "Indiana", code:"IN", population:6483802},

               {name: "Arizona", code:"AZ",population:6392017},
               {name: "Tennessee", code:"TN",population:6346105},
               {name: "Missouri", code:"MO", population:5988927},

               {name: "Maryland", code:"MD",population:5773552},
               {name: "Wisconsin", code:"WI",population:5686986},
               {name: "Minnesota", code:"MN", population:5303925},

               {name: "Colorado", code:"CO",population:5029196},
               {name: "Alabama", code:"AL",population:4779736},
               {name: "South Carolina", code:"SC", population:4625364},

               {name: "Louisiana", code:"LA",population:4533372},
               {name: "Kentucky", code:"KY",population:4339367},
               {name: "Oregon", code:"OR", population:3831074},

               {name: "Oklahoma", code:"OK",population:3751351},
               {name: "Connecticut", code:"CT",population:3574097},
               {name: "Iowa", code:"IA", population:3046355},

               {name: "Mississippi", code:"MS", population:2967297},
               {name: "Arkansas", code:"AR",population:2915918},
               {name: "Kansas", code:"KS",population:2853118},

               {name: "Utah", code:"UT", population:2763885},
               {name: "Nevada", code:"NV",population:2700551},
               {name: "New Mexico", code:"NM",population:2059179},
               
               {name: "West Virginia", code:"WV", population:1852994},
               {name: "Nebraska", code:"NE",population:1826341},
               {name: "Idaho", code:"ID",population:1567582},
               
               {name: "Hawaii", code:"HI", population:1360301},
               {name: "Maine", code:"ME",population:1328361},
               {name: "New Hampshire", code:"NH",population:1316470},
               
               {name: "Rhode Island", code:"RI", population:1052567},
               {name: "Montana", code:"MT",population:989415},
               {name: "Delaware", code:"DE",population:897934},
               
               {name: "South Dakota", code:"SD", population:814180},
               {name: "Alaska", code:"AK",population:710231},
               {name: "North Dakota", code:"ND",population:672591},
               
               {name: "Vermont", code:"VT", population:625741},
               {name: "Washington, D.C.", code:"DC",population:601723},
               {name: "Wyoming", code:"WY",population:563626},
               


             ];

//little review for next week

var total=0;
states.forEach( e => {
    total = total + e.population;
            });
console.log(states);
console.log({total});