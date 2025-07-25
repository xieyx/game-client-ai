package main

import (
	"fmt"
	"os"

	"github.com/sirupsen/logrus"
	"github.com/spf13/viper"
)

func main() {
	// Initialize logger
	logger := logrus.New()
	logger.SetFormatter(&logrus.TextFormatter{
		FullTimestamp: true,
	})
	logger.SetLevel(logrus.InfoLevel)

	// Initialize configuration
	viper.SetConfigName("config")
	viper.SetConfigType("yaml")
	viper.AddConfigPath(".")
	viper.AddConfigPath("$HOME/.game-client-ai")
	viper.AddConfigPath("/etc/game-client-ai/")

	// Read configuration
	if err := viper.ReadInConfig(); err != nil {
		if _, ok := err.(viper.ConfigFileNotFoundError); ok {
			logger.Warn("No config file found, using defaults")
		} else {
			logger.Fatalf("Error reading config file: %v", err)
		}
	} else {
		logger.Infof("Using config file: %s", viper.ConfigFileUsed())
	}

	// Log startup
	logger.Info("Game AI Client starting...")

	// Print welcome message
	fmt.Println("Game AI Client")
	fmt.Println("================")
	fmt.Println("Initializing game AI client...")
	fmt.Println("Configuration loaded successfully")
	fmt.Println("Ready to connect to game server")

	// TODO: Implement game AI client logic
	logger.Info("Game AI Client initialized successfully")
}
