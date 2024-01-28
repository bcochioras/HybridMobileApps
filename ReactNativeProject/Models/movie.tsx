import { ImageProps } from "react-native";

class Movie {
    id: number;
    path: ImageProps;
  
    constructor({ id, path }: { id: number, path: ImageProps }) {
      this.id = id;
      this.path = path
    }
  }

  export default Movie;