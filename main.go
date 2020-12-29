package main

import (
	"bytes"
	"log"
	"os/exec"
	"time"
)

func main() {

	proc := exec.Command("./wake.sh")

	var out bytes.Buffer
	proc.Stdout = &out

	err := proc.Start()
	if err != nil {
		log.Fatal(err)
	}

	for {
		time.Sleep(360 * time.Second)
		log.Println("Ejecutando, salida:")
		log.Println(out.String())
		out.Reset()
	}
}
