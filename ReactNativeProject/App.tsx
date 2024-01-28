/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import Movie from './Models/movie'
import MovieCard  from './components/MovieCard'
import {
  SafeAreaView,
  ScrollView,
  StyleSheet,
  Text,
  useColorScheme,
  View,
} from 'react-native';
import { Input } from 'react-native-elements';
import { Colors } from 'react-native/Libraries/NewAppScreen';

function filterMovies(movies: Movie[], searchText: string): Movie[] {
  if (searchText.length == 0) {
    return movies
  }
  return movies.filter((movie) => String(movie.id) == searchText);
}

function createSection(movies: Movie[], name: string, searchText: string): React.JSX.Element {
  const isDarkMode = useColorScheme() === 'dark';
  const filteredMovies = filterMovies(movies, searchText)
return (
  <View>
  <View style={styles.sectionContainer}>
    <Text style= {{ color: isDarkMode ? 'black' : 'white' }}> {name} </Text>
   </View>

   <View style={{height:20}}/>

   <ScrollView horizontal={true}>
    <View style={{flexDirection: 'row'}}>
      {
      filteredMovies.map((movie) => (
        <MovieCard key={movie.id} image={movie.path}/>
      ))
    }
    </View>
   </ScrollView>
   </View>
)
}

function App(): React.JSX.Element {
  const newReleases: Movie[] = [
    new Movie({id: 1, path: require('./assets/NewReleases/movie1.png')}),
    new Movie({id: 2, path: require('./assets/NewReleases/movie2.png')}),
    new Movie({id: 3, path: require('./assets/NewReleases/movie3.png')})
  ]

  const mostPopular: Movie[] = [
    new Movie({id: 1, path: require('./assets/MostPopular/movie1.png')}),
    new Movie({id: 2, path: require('./assets/MostPopular/movie2.png')}),
    new Movie({id: 3, path: require('./assets/MostPopular/movie3.png')})
  ]

  const isDarkMode = useColorScheme() === 'dark';
  const [searchText, onChangeText] = React.useState('');
  return (
    <SafeAreaView style={{ 
      backgroundColor: isDarkMode ? Colors.light : Colors.dark,
      flex: 1
     }}>

     <Input
     inputContainerStyle= {{
      borderColor: "red",
      borderRadius: 20,
      backgroundColor: isDarkMode ? Colors.dark : Colors.light,
      paddingHorizontal: 10,
      borderBottomWidth: 0
     }}
     value={searchText}
     onChangeText={newText => onChangeText(newText)}
     placeholder='What movie are you looking for?'
     />

     {createSection(newReleases, 'New Releases', searchText)}
     {createSection(mostPopular, 'Most popular', searchText)}

    </SafeAreaView>
  )
}

const styles = StyleSheet.create({
  sectionContainer: {
    flexDirection: "row",
    justifyContent: "space-between",
    padding: 10
  }
});

export default App;
