package com.example.U5_W1_D5.Item;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public  abstract class Item {
public String nome;
public double prezzo;
public String calorie;
}
