source .env


dfx deploy ic_siws_provider --network ic --argument $'(
    record {
        domain = "catalyze.one";
        uri = "https://catalyze.one";
        salt = "'$SALT'";
        chain_id = opt "mainnet"; 
        scheme = opt "https";
        statement = opt "Login to Catalyze";
        sign_in_expires_in = opt 300000000000; 
        session_expires_in = opt 604800000000000;
        targets = null;
    }
)'