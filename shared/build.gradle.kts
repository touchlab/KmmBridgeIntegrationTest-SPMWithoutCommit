plugins {
    kotlin("multiplatform") version "1.7.20"
    kotlin("native.cocoapods") version "1.7.20"
    id("com.android.library") version "7.2.2"
    id("co.touchlab.faktory.kmmbridge") version "999"
    `maven-publish`
}

group = "co.touchlab.kmmbridge.test.spmmanualcommit"
version = "1.0"

repositories {
    mavenLocal()
    google()
    mavenCentral()
}

kotlin {
    android()

    iosX64()
    iosArm64()
    iosSimulatorArm64()

    sourceSets {
        val commonMain by getting
        val commonTest by getting {
            dependencies {
                implementation(kotlin("test"))
            }
        }
        val androidTest by getting {
            dependencies {
                implementation("junit:junit:4.13.2")
            }
        }
    }
}

android {
    compileSdk = 33
    defaultConfig {
        minSdk = 21
    }
    sourceSets["main"].manifest.srcFile("src/androidMain/AndroidManifest.xml")
}

kmmbridge {
    versionPrefix.set("1.5")
    spm(spmDirectory = "../", commitManually = true)
//    For now the ios target takes whatever is the newest published Package.swift and doesn't care about the version
//    timestampVersions()
    gitTagVersions()
    mavenPublishArtifacts()
}

addGithubPackagesRepository()
