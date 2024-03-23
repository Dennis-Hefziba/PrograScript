read -p "Edad: " edad
if [ $edad -le 2 ]; then
    echo "Eres un bebe"
    elif [ $edad -le 12 ]; then
        echo "Eres un nino"
        elif [ $edad -le 18 ]; then
            echo "Eres un adolescente"
            elif [ $edad -le 65 ]; then 
                echo "Eres un adulto"
                    else 
                    echo "Larga vida"
        fi
        