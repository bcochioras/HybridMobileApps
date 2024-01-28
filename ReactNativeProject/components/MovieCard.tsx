import {
    View,
    Image,
    ImageProps
    } from 'react-native';
import React from 'react';

const MovieCard = ({image} : {image: ImageProps}) => {
    return (
        <View style= {{padding: 12}}>
            <Image
            source={image}
            style= {{
                width: 160,
                height: 200,
                borderRadius: 12
            }}
            />
        </View>
    )
}

export default MovieCard;