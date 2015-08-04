var friends = {
    bill: {firstName: "Bill",
            lastName: "Scott",
            number: 123,
            address: ["2656 McAllister St", "San Francisco", "CA", "94118"]
            },
    steve: {firstName: "Steve",
            lastName: "O'Neil",
            number: 456,
            address: ["888 O'Farrell", "San Francisco", "CA", "94109"]
            }
};

function list(friends) {
    for (var k in friends) {
        var printFirstName = friends[k];
        console.log(printFirstName);
    };
};

list(friends)