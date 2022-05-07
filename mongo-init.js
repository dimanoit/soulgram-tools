db.createUser(
    {
        user: "dima",
        pwd: "test123",
        roles: [
            {
                role: "readWrite",
                db: "soulgram-interests"
            }
        ]
    }
);