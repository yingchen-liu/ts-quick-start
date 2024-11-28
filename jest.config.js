module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  collectCoverage: true,
  collectCoverageFrom: ["src/**/*.{js,jsx,ts}", "!src/index.js"],
  coverageDirectory: "coverage",
  coverageReporters: ["html"],
  moduleFileExtensions: ['ts', 'tsx', 'js', 'jsx', 'json', 'node'],
  transform: {
    '^.+\\.ts?$': 'ts-jest', // Use ts-jest for transforming TypeScript files
  },
  testMatch: ['**/test/**/*.test.(ts|js)'], // Match test files
};
