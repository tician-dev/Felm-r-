import 'dart:io';

void main() {
  print('Kérem a szöveget: ');
  String txt = stdin.readLineSync()!;
  
  print('\nheadTail teszt:');
  print(headTail(txt));
  
  print('\nevenFizz teszt:');
  print('4 -> ${evenFizz(4)}');
  print('9 -> ${evenFizz(9)}');
  print('12 -> ${evenFizz(12)}');
  print('17 -> ${evenFizz(17)}');
  
  print('\nlikeFibo teszt:');
  print(likeFibo(10));
  
  print('\nvowelLower teszt:');
  print(vowelLower(txt));
}

// 1. feladat
String headTail(String txt) {
  int mid = txt.length ~/ 2;
  return txt.substring(mid) + txt.substring(0, mid);
}

// 2. feladat
String evenFizz(int number) {
  if (number % 2 == 0 && number % 3 == 0) {
    return "EvenFizz";
  } else if (number % 2 == 0) {
    return "Even";
  } else if (number % 3 == 0) {
    return "Fizz";
  }
  return number.toString();
}

// 3. feladat
List<int> likeFibo(int number) {
  if (number == 0) return [];
  if (number == 1) return [0];
  if (number == 2) return [0, 1];
  if (number == 3) return [0, 1, 1];
  
  List<int> result = [0, 1, 1];
  for (int i = 3; i < number; i++) {
    result.add(result[i-1] + result[i-3]);
  }
  return result;
}

// 4. feladat
String vowelLower(String txt) {
  Set<String> vowels = {'a','á', 'e','é','i','í', 'o','ó', 'u','ú', 'ö','ő', 'ü','ű'};
  String result = '';
  
  for (int i = 0; i < txt.length; i++) {
    String char = txt[i].toLowerCase();
    if (vowels.contains(char)) {
      result += char;
    } else {
      result += txt[i].toUpperCase();
    }
  }
  return result;
}

