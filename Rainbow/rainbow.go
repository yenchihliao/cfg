package main

import (
	"fmt"
	"time"
)
func main() {
	Rainbow := []string{
"           _       _                   ",
" _ __ __ _(_)_ __ | |__   _____      __",
"| '__/ _` | | '_ \\| '_ \\ / _ \\ \\ /\\ / /",
"| | | (_| | | | | | |_) | (_) \\ V  V / ",
"|_|  \\__,_|_|_| |_|_.__/ \\___/ \\_/\\_/  "}
	Len := 60
	rainbow := []int{1, 3, 63, 2, 4, 5, 65}
	for _, color := range rainbow{
		format := fmt.Sprintf("\x1b[%dm", color+40)
		format += "%s"
		for i:=0;i<Len;i++{
			fmt.Printf(format, " ")
		}
		fmt.Printf("\x1b[0m%s", "\n")
	}
	keyword := "rainbow"
	for round:=0;round< 100;round++{
		time.Sleep(50*time.Millisecond)
		for i, color := range rainbow{
			format := fmt.Sprintf("\x1b[%dm%s", color+30, "%c")
			fmt.Printf(format, keyword[i])
			time.Sleep(10*time.Millisecond)
		}
		if((round+1) % (Len/7) == 0){
			fmt.Printf("\r")
			for i:=0;i<Len;i++{
				fmt.Printf("%s", " ")
			}
			fmt.Printf("\x1b[0m%s", "\r")
		}
	}
	fmt.Printf("\x1b[0m%s", "\n")
	for i:=0;i<5;i++{
		format := fmt.Sprintf("\x1b[%dm", rainbow[i]+40)
		format += "%s\n"
		fmt.Printf(format, Rainbow[i])
	}
	fmt.Printf("\x1b[0m%s", "\n")

}

