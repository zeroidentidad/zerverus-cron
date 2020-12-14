package main

import (
	"bytes"
	"log"
	"os/exec"
)

func main() {

	proc := exec.Command("./wake.sh")
	out := bytes.NewBuffer([]byte{})

	proc.Stdout = out

	err := proc.Run()
	if err != nil {
		log.Println(err)
	}

	if proc.ProcessState.Success() {
		log.Println("Proceso ejecutado, salida:")
		log.Println(out.String())
	}
}
